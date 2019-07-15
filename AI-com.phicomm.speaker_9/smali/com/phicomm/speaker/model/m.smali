.class public Lcom/phicomm/speaker/model/m;
.super Ljava/lang/Object;
.source "UserInfoModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/net/a/a;)V
    .locals 2

    const-string v0, "https://accountsym.phicomm.com/v1/accountDetail"

    .line 49
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->a(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/c;

    move-result-object v0

    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/net/c/c;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V
    .locals 2

    const-string v0, "https://accountsym.phicomm.com/v1/property"

    .line 59
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->b(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/e;

    move-result-object v0

    const-string v1, "data"

    .line 60
    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/net/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object p1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0, p2}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V
    .locals 2

    const-string v0, "https://portraitsym.phicomm.com/pic/uploadBase64"

    .line 25
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->b(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/e;

    move-result-object v0

    const-string v1, "imgBase64"

    .line 26
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/net/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object p1

    const-string v0, "type"

    .line 27
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object p1

    const/4 p2, 0x0

    .line 28
    invoke-virtual {p1, p2, p3}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V
    .locals 2

    const-string v0, "https://accountsym.phicomm.com/v1/oldAccountVerification"

    .line 79
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->b(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/e;

    move-result-object v0

    const-string v1, "mailaddress"

    .line 80
    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/net/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object p1

    const-string v0, "phonenumber"

    .line 81
    invoke-virtual {p1, v0, p2}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object p1

    const-string p2, "verificationcode"

    .line 82
    invoke-virtual {p1, p2, p3}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object p1

    const/4 p2, 0x0

    .line 83
    invoke-virtual {p1, p2, p4}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V
    .locals 2

    const-string v0, "https://accountsym.phicomm.com/v1/password"

    .line 72
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->b(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/e;

    move-result-object v0

    const-string v1, "newpassword"

    .line 73
    invoke-virtual {v0, v1, p2}, Lcom/phicomm/speaker/net/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object p2

    const-string v0, "oldpassword"

    .line 74
    invoke-virtual {p2, v0, p1}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object p1

    const/4 p2, 0x0

    .line 75
    invoke-virtual {p1, p2, p3}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V
    .locals 2

    const-string v0, "https://accountsym.phicomm.com/v1/rebind"

    .line 88
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->b(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/e;

    move-result-object v0

    const-string v1, "mailaddress"

    .line 89
    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/net/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object p1

    const-string v0, "phonenumber"

    .line 90
    invoke-virtual {p1, v0, p2}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object p1

    const-string p2, "verificationcode"

    .line 91
    invoke-virtual {p1, p2, p3}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object p1

    const/4 p2, 0x0

    .line 92
    invoke-virtual {p1, p2, p4}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method
