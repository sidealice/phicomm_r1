.class public Lcom/phicomm/speaker/model/b;
.super Ljava/lang/Object;
.source "BannerModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V
    .locals 2

    const-string v0, "https://home.phicomm.com/v1/soundbox/phicomm_echo_banner/pictures"

    .line 21
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->a(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/c;

    move-result-object v0

    const-string v1, "function"

    .line 22
    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/net/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object p1

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0, p2}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method
