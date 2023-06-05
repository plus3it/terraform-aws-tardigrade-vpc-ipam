import os
import logging
from git import Repo
import shutil
import sys

# Set up logging
log_folder = "/app/logs"
output_folder = "/root/git/terraform-aws-tardigrade-vpc-ipam"
repo_url = "git@github.com:lion3627/code-platform.git"
branch_name = "master"  # Specify the desired branch name here
directory_to_process = "/root/git/terraform-aws-tardigrade-vpc-ipam"

IGNORED_FILES = ['.gitignore', 'changelog.md', 'README.MD', 'package-lock.json', '.terraform.lock.hcl', 'process.py', 'directory-tree.py']
IGNORED_FILE_PATTERNS = ('-processed.txt', '.log')
IGNORED_FOLDERS = ['node_modules', '.git', '.terraform', '.github']

os.makedirs(log_folder, exist_ok=True)
os.makedirs(output_folder, exist_ok=True)


def process_file(path, is_git_repo):
    rel_path = os.path.relpath(path, directory_to_process)

    if is_git_repo:
        # Remove the repository name from the beginning of the path
        rel_path = '/'.join(rel_path.split('/')[1:])

    with open(path, 'r', encoding='ISO-8859-1') as f:
        content = f.read()
    return f"{rel_path}:\n```\n{content}\n```\n"

def should_exclude_file(file):
    return file in IGNORED_FILES or file.endswith(IGNORED_FILE_PATTERNS)


def should_exclude_folder(folder):
    return folder in IGNORED_FOLDERS

def parse_directory(directory, is_git_repo):
    output = []
    for root, dirs, files in os.walk(directory, topdown=True):
        # Exclude directories specified in IGNORED_FOLDERS
        dirs[:] = [d for d in dirs if not should_exclude_folder(d)]

        # Exclude files specified in IGNORED_FILES and patterns specified in IGNORED_FILE_PATTERNS
        files = [file for file in files if not should_exclude_file(file)]

        for file in files:
            path = os.path.join(root, file)
            output.append(process_file(path, is_git_repo))
    return output


def main():
    # Set up logging
    logging.basicConfig(filename=f"{log_folder}/directory-parse.log", level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s")

    if sys.argv and '-r' in sys.argv:
        print("Processing directories from Git repository...")
        repo_name = os.path.basename(repo_url).split(".git")[0]
        repo = Repo.clone_from(repo_url, repo_name)
        repo.git.checkout(branch_name)  # Checkout the specified branch
        output_tmp = parse_directory(repo_name, is_git_repo=True)
        print("Directories have been processed.")

        tmp_output_filename = os.path.join(output_folder, f"{repo_name}-{branch_name}-processed.txt")
        with open(tmp_output_filename, 'w') as f:
            f.write('\n'.join(output_tmp))
        print(f"Processed file '{tmp_output_filename}' generated successfully.")

        # Deleting the cloned repository
        shutil.rmtree(repo_name)
        print("Cloned repository has been deleted.")

    print(f"Processing directories in '{directory_to_process}'...")
    output_mnt = parse_directory(directory_to_process, is_git_repo=False)
    print("Directories have been processed.")

    mnt_output_filename = os.path.join(output_folder, f"{os.path.basename(output_folder)}-processed.txt")
    with open(mnt_output_filename, 'w') as f:
        f.write('\n'.join(output_mnt))
    print(f"Processed file '{mnt_output_filename}' generated successfully.")


if __name__ == "__main__":
    main()
