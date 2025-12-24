import os

TARGET = os.getcwd()

# Read contents of file
with open(os.path.join(TARGET, 'src', 'SLURM_scripts', 'python_script_run.slurm')) as f:
    content = f.read()
    # replace tag by install path

content = content.replace('$((INSTALL))', TARGET)

# replace file content
with open(os.path.join(TARGET, 'src', 'SLURM_scripts', 'python_script_run.slurm'), 'w') as f:
        f.write(content)