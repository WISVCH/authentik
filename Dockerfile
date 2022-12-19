FROM beryju/authentik:2022.11.3

# Switch (back) to root so we can write to certain folders again.
USER 0

# Remove the existing blueprints folder.
RUN rm -rf /blueprints

COPY ./media /media
COPY ./blueprints /blueprints
COPY ./style.css /web/dist/custom.css

# Switch back to the non-root user.
USER 1000