FROM nagyd96/jupyter-notebook-base:latest

USER root
RUN python3 -m pip install numpy==1.16.4
RUN python3 -m pip install qiskit==0.10.5 # there was a problem installing newer version

USER $NB_USER
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser"]
