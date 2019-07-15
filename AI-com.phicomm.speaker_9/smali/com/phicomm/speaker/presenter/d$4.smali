.class Lcom/phicomm/speaker/presenter/d$4;
.super Lcom/phicomm/speaker/e/c/b;
.source "DeviceInfoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/d;->a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/d;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/d$4;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 3

    .line 147
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    const-string v0, "DeviceInfoPresenter"

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeBindDevice onUniFailed code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$4;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->i(Lcom/phicomm/speaker/presenter/d;)V

    .line 150
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$4;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d$4;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object v0

    invoke-static {p1}, Lcom/phicomm/speaker/e/c/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/presenter/b/d;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 3

    const-string v0, "DeviceInfoPresenter"

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeBindDevice onUniSuccess code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " data = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/d$4;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/d;->h(Lcom/phicomm/speaker/presenter/d;)V

    .line 140
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/d$4;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/d$4;->a:Lcom/phicomm/speaker/presenter/d;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/d;->b()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 135
    check-cast p2, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/d$4;->a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method
