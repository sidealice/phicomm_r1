.class Lcom/phicomm/speaker/popup/b$3;
.super Ljava/lang/Object;
.source "DateChosePopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/popup/b;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/popup/b;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/popup/b;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/phicomm/speaker/popup/b$3;->a:Lcom/phicomm/speaker/popup/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/popup/b$3;->a:Lcom/phicomm/speaker/popup/b;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/phicomm/speaker/popup/b;->a(Lcom/phicomm/speaker/popup/b;F)V

    return-void
.end method
