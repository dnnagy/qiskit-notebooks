FROM nagyd96/jupyter-notebook-base:latest

# Switch to root user for installing qiskit
USER root

# there was a problem installing newer version
RUN python3 -m pip install qiskit==0.10.5

# Switch back to NB_USER
USER $NB_USER

# Run Jupyter notebook from workdir
RUN cd $WORKDIR
ENTRYPOINT jupyter notebook --ip=0.0.0.0 --no-browser
