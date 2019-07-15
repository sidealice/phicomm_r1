.class public Lcom/phicomm/speaker/model/d;
.super Ljava/lang/Object;
.source "DeviceModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/net/a/a;)V
    .locals 3

    const-string v0, "https://home.phicomm.com/v1/user/devices"

    .line 24
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->a(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/c;

    move-result-object v0

    const-string v1, "device_type"

    const-string v2, "phicomm_echo"

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/net/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object v0

    const-string v1, "page"

    const-string v2, "1"

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object v0

    const-string v1, "page_size"

    const-string v2, "100"

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://home.phicomm.com/v1/user/family/0/room/0/device/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/net/b/c;->d(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/b;

    move-result-object p1

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, v0, p2}, Lcom/phicomm/speaker/net/c/b;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V
    .locals 2

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    const-string p1, "305"

    const-string p2, "deviceid can not null!"

    .line 74
    invoke-virtual {p4, p1, p2}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://home.phicomm.com/v1/user/device/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/net/b/c;->c(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    .line 79
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "device_nickname"

    .line 80
    invoke-virtual {p1, v0, p2}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    .line 82
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "pic_group_id"

    .line 83
    invoke-virtual {p1, p2, p3}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    :cond_3
    const/4 p2, 0x0

    .line 85
    invoke-virtual {p1, p2, p4}, Lcom/phicomm/speaker/net/c/d;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V
    .locals 2

    const-string v0, "https://home.phicomm.com/v1/user/device"

    .line 42
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->c(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object v0

    const-string v1, "udid"

    .line 43
    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const-string v0, "device_id"

    .line 44
    invoke-virtual {p1, v0, p2}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const-string p2, "device_type"

    .line 45
    invoke-virtual {p1, p2, p3}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const-string p2, "model"

    .line 46
    invoke-virtual {p1, p2, p4}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const-string p2, "hardware_version"

    .line 47
    invoke-virtual {p1, p2, p5}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const-string p2, "rom_version"

    .line 48
    invoke-virtual {p1, p2, p6}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const/4 p2, 0x0

    .line 49
    invoke-virtual {p1, p2, p7}, Lcom/phicomm/speaker/net/c/d;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public b(Lcom/phicomm/speaker/net/a/a;)V
    .locals 2

    const-string v0, "https://home.phicomm.com/v1/phicomm_echo/pictures"

    .line 95
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->a(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/c;

    move-result-object v0

    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/net/c/c;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V
    .locals 3

    const-string v0, "https://home.phicomm.com/v1/user/device/%s/check_bind_status"

    const/4 v1, 0x1

    .line 106
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/net/b/c;->a(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/c;

    move-result-object p1

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, v0, p2}, Lcom/phicomm/speaker/net/c/c;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V
    .locals 2

    const-string v0, "https://home.phicomm.com/v1/soundbox/wake_up_words"

    .line 117
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->a(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/c;

    move-result-object v0

    const-string v1, "device_id"

    .line 118
    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/net/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object p1

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1, v0, p2}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method
