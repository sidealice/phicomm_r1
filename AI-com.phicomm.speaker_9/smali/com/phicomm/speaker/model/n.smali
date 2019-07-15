.class public Lcom/phicomm/speaker/model/n;
.super Ljava/lang/Object;
.source "VoiceCommandModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILcom/phicomm/speaker/net/a/a;)V
    .locals 2

    const-string v0, "https://home.phicomm.com/v1/soundbox/device/commands"

    .line 18
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->a(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/c;

    move-result-object v0

    const-string v1, "page_no"

    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/net/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object p1

    const-string v0, "page_size"

    .line 20
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object p1

    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p2, p3}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public a(ILcom/phicomm/speaker/net/a/a;)V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://home.phicomm.com/v1/soundbox/device/command/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/phicomm/speaker/net/b/c;->a(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/c;

    move-result-object p1

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0, p2}, Lcom/phicomm/speaker/net/c/c;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method
