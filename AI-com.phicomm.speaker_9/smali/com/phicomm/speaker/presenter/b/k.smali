.class public Lcom/phicomm/speaker/presenter/b/k;
.super Ljava/lang/Object;
.source "MyPlayLoadingView.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/h;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/phicomm/speaker/views/LoadingPlayingDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/b/k;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/b/k;->b:Lcom/phicomm/speaker/views/LoadingPlayingDialog;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/phicomm/speaker/views/LoadingPlayingDialog;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/b/k;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/views/LoadingPlayingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/b/k;->b:Lcom/phicomm/speaker/views/LoadingPlayingDialog;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/b/k;->b:Lcom/phicomm/speaker/views/LoadingPlayingDialog;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/LoadingPlayingDialog;->show()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/b/k;->b:Lcom/phicomm/speaker/views/LoadingPlayingDialog;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/LoadingPlayingDialog;->dismiss()V

    return-void
.end method
