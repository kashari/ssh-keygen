# ssh-keygen
Github Acount or else needed SSH key generation and add to SSH-Agent.

## automation for local use
Make sure you have CURL installed.

```shell
curl -fsSL https://raw.githubusercontent.com/kashari/ssh-keygen/init.sh | tee flow.sh && \
 chmod 755 flow.sh && ./flow.sh -e "misenkashari@icloud.com"
```
Make sure to change the email according to your needs.