import os
import pathlib

def create_directory_tree(start_path, skip_folder, skip_file, level=0):
    start_path = pathlib.Path(start_path).resolve()
    indent = ' ' * 4 * (level + 1)

    if level == 0:
        print(f"+ {start_path.name}")

    with os.scandir(start_path) as entries:
        for entry in entries:
            if entry.is_dir():
                if entry.name != skip_folder:
                    if entry.name != '.git':  # Ignore .git directory
                        print(f"{indent}+ {entry.name}")
                        create_directory_tree(entry.path, skip_folder, skip_file, level + 1)
            elif entry.is_file():
                if entry.name != skip_file:
                    print(f"{indent}  - {entry.name}")

if __name__ == "__main__":
    start_directory = os.path.dirname(os.path.realpath(__file__))
    skip_directory = "node_modules"
    skip_file = os.path.basename(__file__)
    create_directory_tree(start_directory, skip_directory, skip_file)
