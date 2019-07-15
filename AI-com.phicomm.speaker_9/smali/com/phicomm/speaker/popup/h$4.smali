.class Lcom/phicomm/speaker/popup/h$4;
.super Ljava/lang/Object;
.source "JobChosePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/popup/h;->a([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/phicomm/speaker/popup/h;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/popup/h;Landroid/widget/TextView;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/phicomm/speaker/popup/h$4;->b:Lcom/phicomm/speaker/popup/h;

    iput-object p2, p0, Lcom/phicomm/speaker/popup/h$4;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/phicomm/speaker/popup/h$4;->b:Lcom/phicomm/speaker/popup/h;

    iget-object v0, p0, Lcom/phicomm/speaker/popup/h$4;->a:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/phicomm/speaker/popup/h;->a(Lcom/phicomm/speaker/popup/h;Landroid/widget/TextView;)V

    return-void
.end method
