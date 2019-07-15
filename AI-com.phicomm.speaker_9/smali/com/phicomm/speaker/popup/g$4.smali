.class Lcom/phicomm/speaker/popup/g$4;
.super Ljava/lang/Object;
.source "GetPhotoPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/popup/g;-><init>(Landroid/app/Activity;Lcom/phicomm/speaker/c/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/popup/g;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/popup/g;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/phicomm/speaker/popup/g$4;->a:Lcom/phicomm/speaker/popup/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/popup/g$4;->a:Lcom/phicomm/speaker/popup/g;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/popup/g;->a(F)V

    return-void
.end method
