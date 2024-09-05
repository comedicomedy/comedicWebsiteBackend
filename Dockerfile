FROM oven/bun:latest

COPY package.json ./
COPY bun.lockb ./
COPY index.ts ./
COPY visits ./

EXPOSE 7000

RUN bun install

CMD ["bun", "run", "index.ts"]
