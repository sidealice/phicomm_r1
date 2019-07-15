.class Lcom/phicomm/speaker/presenter/d$2;
.super Lcom/phicomm/speaker/net/a/a;
.source "DeviceInfoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/d;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/d;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/d$2;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$2;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->d(Lcom/phicomm/speaker/presenter/d;)V

    const-string v0, "DeviceInfoPresenter"

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeDevicePicGroup onError code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$2;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$2;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lokhttp3/Request;)V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$2;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->e(Lcom/phicomm/speaker/presenter/d;)V

    const-string v0, "DeviceInfoPresenter"

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeDevicePicGroup onSuccess result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " refresh = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/d$2;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/d$2;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/d;->a()V

    :cond_0
    return-void
.end method
