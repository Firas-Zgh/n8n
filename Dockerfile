# 🔧 Start from the official n8n image
FROM n8nio/n8n

# 👷 Install ffmpeg (and clean up)
USER root
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean

# 👤 Return to default node user for n8n
USER node
