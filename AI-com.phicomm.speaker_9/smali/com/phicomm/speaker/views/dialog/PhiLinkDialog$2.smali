.class Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$2;
.super Ljava/lang/Object;
.source "PhiLinkDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->a(Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/AdapterView$OnItemClickListener;

.field final synthetic b:Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$2;->b:Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;

    iput-object p2, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$2;->a:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$2;->a:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$2;->a:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog$2;->b:Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/dialog/PhiLinkDialog;->dismiss()V

    :goto_0
    return-void
.end method
