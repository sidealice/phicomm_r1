.class Lcom/phicomm/speaker/presenter/m$1;
.super Ljava/lang/Object;
.source "PhiLinkPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/presenter/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/m;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/m;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/m$1;->a:Lcom/phicomm/speaker/presenter/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m$1;->a:Lcom/phicomm/speaker/presenter/m;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/m;->e()V

    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m$1;->a:Lcom/phicomm/speaker/presenter/m;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/m;->a(Lcom/phicomm/speaker/presenter/m;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
