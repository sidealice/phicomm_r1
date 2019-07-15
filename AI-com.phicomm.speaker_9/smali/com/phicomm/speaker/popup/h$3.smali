.class Lcom/phicomm/speaker/popup/h$3;
.super Ljava/lang/Object;
.source "JobChosePopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

    .line 80
    iput-object p1, p0, Lcom/phicomm/speaker/popup/h$3;->a:Lcom/phicomm/speaker/popup/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/popup/h$3;->a:Lcom/phicomm/speaker/popup/h;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/phicomm/speaker/popup/h;->a(Lcom/phicomm/speaker/popup/h;F)V

    return-void
.end method
