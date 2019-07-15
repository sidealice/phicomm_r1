.class Lcom/phicomm/speaker/service/CommonService$1;
.super Ljava/lang/Object;
.source "CommonService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/service/CommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/service/CommonService;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/service/CommonService;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/phicomm/speaker/service/CommonService$1;->a:Lcom/phicomm/speaker/service/CommonService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 28
    invoke-static {}, Lcom/phicomm/speaker/views/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/phicomm/speaker/service/CommonService$1;->a:Lcom/phicomm/speaker/service/CommonService;

    invoke-static {v0}, Lcom/phicomm/speaker/service/CommonService;->a(Lcom/phicomm/speaker/service/CommonService;)V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/service/CommonService$1;->a:Lcom/phicomm/speaker/service/CommonService;

    invoke-static {v0}, Lcom/phicomm/speaker/service/CommonService;->b(Lcom/phicomm/speaker/service/CommonService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
