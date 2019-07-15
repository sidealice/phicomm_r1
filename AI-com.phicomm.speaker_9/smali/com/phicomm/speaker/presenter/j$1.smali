.class Lcom/phicomm/speaker/presenter/j$1;
.super Ljava/lang/Object;
.source "MediaPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/presenter/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/j;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/j;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/j$1;->a:Lcom/phicomm/speaker/presenter/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$1;->a:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->a(Lcom/phicomm/speaker/presenter/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$1;->a:Lcom/phicomm/speaker/presenter/j;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/presenter/j;->a(Lcom/phicomm/speaker/presenter/j;Z)Z

    const p1, 0x7f0f0179

    .line 59
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    :cond_0
    return-void
.end method
