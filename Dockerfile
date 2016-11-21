FROM centos:5

RUN yum install -y curl fontconfig libXrender libXext libidn ImageMagick

RUN curl -SL https://www.earthsystemgrid.org/download/fileDownload.html?logicalFileId=dd9f737e-c4c5-11df-9b94-00c0f03d5b7c | tar -xzvC /usr
ENV NCARG_ROOT /usr
ENV NCARG_RANGS /root/MEDSLIK_II_1.01/ncl/lib/ncarg/database/rangs/
RUN echo '*TextFuncCode : ~' > /root/.hluresfile
