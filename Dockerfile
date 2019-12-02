FROM nagyd96/jupyter-notebook-base:latest
<<<<<<< HEAD
=======

# Switch to root user for installing qiskit
>>>>>>> 524ff9f06ae77f63da81560ea60cf83c19e20f3f
USER root

# there was a problem installing newer version
RUN python3 -m pip install qiskit==0.10.5

# Switch back to NB_USER
USER $NB_USER
<<<<<<< HEAD
ENTRYPOINT cd $WORKDIR && jupyter notebook --ip=0.0.0.0 --no-browser
=======

# Run Jupyter notebook from workdir
RUN cd $WORKDIR
ENTRYPOINT jupyter notebook --ip=0.0.0.0 --no-browser
>>>>>>> 524ff9f06ae77f63da81560ea60cf83c19e20f3f
