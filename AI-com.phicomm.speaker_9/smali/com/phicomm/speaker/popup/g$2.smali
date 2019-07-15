.class Lcom/phicomm/speaker/popup/g$2;
.super Ljava/lang/Object;
.source "GetPhotoPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/popup/g;-><init>(Landroid/app/Activity;Lcom/phicomm/speaker/c/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/c/e;

.field final synthetic b:Lcom/phicomm/speaker/popup/g;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/popup/g;Lcom/phicomm/speaker/c/e;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/phicomm/speaker/popup/g$2;->b:Lcom/phicomm/speaker/popup/g;

    iput-object p2, p0, Lcom/phicomm/speaker/popup/g$2;->a:Lcom/phicomm/speaker/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/phicomm/speaker/popup/g$2;->b:Lcom/phicomm/speaker/popup/g;

    invoke-virtual {p1}, Lcom/phicomm/speaker/popup/g;->a()V

    .line 53
    iget-object p1, p0, Lcom/phicomm/speaker/popup/g$2;->a:Lcom/phicomm/speaker/c/e;

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/phicomm/speaker/popup/g$2;->a:Lcom/phicomm/speaker/c/e;

    invoke-interface {p1}, Lcom/phicomm/speaker/c/e;->g()V

    :cond_0
    return-void
.end method
