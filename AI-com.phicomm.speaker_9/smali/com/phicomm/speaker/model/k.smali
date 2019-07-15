.class public Lcom/phicomm/speaker/model/k;
.super Ljava/lang/Object;
.source "UpdateModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;ILjava/lang/String;Lcom/phicomm/speaker/net/a/a;)V
    .locals 3

    const-string v0, "https://home.phicomm.com/v1/app/checkupdate"

    .line 14
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->c(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object v0

    const-string v1, "id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const-string v0, "platid"

    .line 16
    invoke-virtual {p1, v0, p2}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const-string p2, "vercode"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 17
    invoke-virtual {p1, p2, p3}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const-string p2, "channel"

    .line 18
    invoke-virtual {p1, p2, p4}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const/4 p2, 0x0

    .line 19
    invoke-virtual {p1, p2, p5}, Lcom/phicomm/speaker/net/c/d;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://home.phicomm.com/v1/user/device/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/upgrade"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/net/b/c;->c(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0, p2}, Lcom/phicomm/speaker/net/c/d;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V
    .locals 2

    const-string v0, "https://home.phicomm.com/v1/ota/checkupdate"

    .line 24
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->c(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object v0

    const-string v1, "hardware_version"

    .line 25
    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const-string v0, "rom_version"

    .line 26
    invoke-virtual {p1, v0, p2}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const-string p2, "device_type"

    .line 27
    invoke-virtual {p1, p2, p3}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const-string p2, "model"

    .line 28
    invoke-virtual {p1, p2, p4}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const-string p2, "device_id"

    .line 29
    invoke-virtual {p1, p2, p5}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const/4 p2, 0x0

    .line 31
    invoke-virtual {p1, p2, p6}, Lcom/phicomm/speaker/net/c/d;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method
