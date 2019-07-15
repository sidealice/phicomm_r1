.class Lcom/phicomm/speaker/presenter/l$1;
.super Ljava/lang/Object;
.source "OtaPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/presenter/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/l;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/l;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/l$1;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$1;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$1;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/l;->a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/b/l;->c()V

    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l$1;->a:Lcom/phicomm/speaker/presenter/l;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/l;->a()V

    :cond_0
    return-void
.end method
