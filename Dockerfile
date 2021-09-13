FROM artemisfowl004/jupyter
# Add other pakages before deployment 
# RUN apt install <your-pakage> -y
RUN mkdir /JupyterNotebooks
COPY JupyterNotebooks /JupyterNotebooks
COPY jupyter.py /conf/jupyter.py
COPY jupyter_notebook_config.json /root/.jupyter/jupyter_notebook_config.json

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
