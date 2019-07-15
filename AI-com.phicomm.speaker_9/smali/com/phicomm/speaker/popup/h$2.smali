.class Lcom/phicomm/speaker/popup/h$2;
.super Ljava/lang/Object;
.source "JobChosePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/popup/h;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/popup/h;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/popup/h;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/phicomm/speaker/popup/h$2;->a:Lcom/phicomm/speaker/popup/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/phicomm/speaker/popup/h$2;->a:Lcom/phicomm/speaker/popup/h;

    invoke-static {p1}, Lcom/phicomm/speaker/popup/h;->a(Lcom/phicomm/speaker/popup/h;)Lcom/phicomm/speaker/c/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/phicomm/speaker/popup/h$2;->a:Lcom/phicomm/speaker/popup/h;

    invoke-static {p1}, Lcom/phicomm/speaker/popup/h;->a(Lcom/phicomm/speaker/popup/h;)Lcom/phicomm/speaker/c/b;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/popup/h$2;->a:Lcom/phicomm/speaker/popup/h;

    invoke-static {v0}, Lcom/phicomm/speaker/popup/h;->b(Lcom/phicomm/speaker/popup/h;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/phicomm/speaker/c/b;->a(Ljava/lang/String;)V

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/popup/h$2;->a:Lcom/phicomm/speaker/popup/h;

    invoke-virtual {p1}, Lcom/phicomm/speaker/popup/h;->a()V

    return-void
.end method
