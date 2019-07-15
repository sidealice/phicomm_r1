.class public Lcom/phicomm/speaker/model/a;
.super Ljava/lang/Object;
.source "AppModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/net/a/a;)V
    .locals 3

    const-string v0, "https://home.phicomm.com/v1/soundbox/function/introduction"

    .line 16
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->a(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/c;

    move-result-object v0

    const-string v1, "os_type"

    const-string v2, "android"

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/net/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object v0

    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method
