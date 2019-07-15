.class Lcom/phicomm/speaker/views/q$1;
.super Ljava/lang/Object;
.source "VolumeControlDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/views/q;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/phicomm/speaker/c/c;Ljava/lang/String;Lcom/phicomm/speaker/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/c/c;

.field final synthetic b:Lcom/phicomm/speaker/views/q;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/q;Lcom/phicomm/speaker/c/c;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/phicomm/speaker/views/q$1;->b:Lcom/phicomm/speaker/views/q;

    iput-object p2, p0, Lcom/phicomm/speaker/views/q$1;->a:Lcom/phicomm/speaker/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/views/q$1;->a:Lcom/phicomm/speaker/c/c;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/views/q$1;->a:Lcom/phicomm/speaker/c/c;

    iget-object v1, p0, Lcom/phicomm/speaker/views/q$1;->b:Lcom/phicomm/speaker/views/q;

    invoke-interface {v0, v1, p1}, Lcom/phicomm/speaker/c/c;->a(Landroid/app/Dialog;Landroid/view/View;)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/q$1;->b:Lcom/phicomm/speaker/views/q;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/q;->dismiss()V

    :goto_0
    return-void
.end method
