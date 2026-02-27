# SSH 部署密钥信息

## 生成时间
2026-02-27 17:16:13

## 公钥（Public Key）
```
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJPPjlG+FcX88X5gtkPuZmb4qkr3xJ4PJAcrFuWB/1iu awesome-openclaw-claw
```

## 密钥指纹
```
SHA256:E6YaeOVusS4cvwuIhXzfv9LneB74Zz5CMcYK5YBZoDo
```

## 密钥位置
- 私钥：`/root/.ssh/awesome_openclaw`
- 公钥：`/root/.ssh/awesome_openclaw.pub`

## 添加到 GitHub

### 方式1：部署密钥（Deploy Key）- 推荐
1. 访问：https://github.com/zjc0230-code/awesome-openclaw/settings/keys
2. 点击 "Add deploy key"
3. 填写：
   - Title: `claw使用`
   - Key: 粘贴上面的公钥
   - ✅ Allow write access（必须勾选！）
4. 点击 "Add key"

### 方式2：全局 SSH Key
1. 访问：https://github.com/settings/keys
2. 点击 "New SSH key"
3. 填写：
   - Title: `claw使用`
   - Key: 粘贴上面的公钥
4. 点击 "Add SSH key"

## Git 配置命令

添加密钥后，执行以下命令切换到 SSH 方式：

```bash
cd /data/workspace/awesome-openclaw

# 配置 SSH
cat >> ~/.ssh/config << EOF
Host github.com-awesome-openclaw
    HostName github.com
    User git
    IdentityFile ~/.ssh/awesome_openclaw
    IdentitiesOnly yes
EOF

# 修改远程 URL
git remote set-url origin git@github.com-awesome-openclaw:zjc0230-code/awesome-openclaw.git

# 推送
git push -u origin main
```

## 安全提示
- ⚠️ 私钥文件请妥善保管，不要泄露
- ✅ 公钥可以安全地添加到 GitHub
- 🔐 此密钥仅用于 awesome-openclaw 仓库
- 🗑️ 如需撤销，在 GitHub 设置中删除即可

---

**生成者**: OpenClaw AI  
**用途**: awesome-openclaw 项目推送
