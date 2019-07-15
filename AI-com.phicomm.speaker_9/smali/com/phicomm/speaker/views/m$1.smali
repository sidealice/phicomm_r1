.class Lcom/phicomm/speaker/views/m$1;
.super Ljava/lang/Object;
.source "LogoutDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/views/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/phicomm/speaker/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/c/c;

.field final synthetic b:Lcom/phicomm/speaker/views/m;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/m;Lcom/phicomm/speaker/c/c;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/phicomm/speaker/views/m$1;->b:Lcom/phicomm/speaker/views/m;

    iput-object p2, p0, Lcom/phicomm/speaker/views/m$1;->a:Lcom/phicomm/speaker/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/phicomm/speaker/views/m$1;->a:Lcom/phicomm/speaker/c/c;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/views/m$1;->a:Lcom/phicomm/speaker/c/c;

    iget-object v1, p0, Lcom/phicomm/speaker/views/m$1;->b:Lcom/phicomm/speaker/views/m;

    invoke-interface {v0, v1, p1}, Lcom/phicomm/speaker/c/c;->a(Landroid/app/Dialog;Landroid/view/View;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/m$1;->b:Lcom/phicomm/speaker/views/m;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/m;->dismiss()V

    :goto_0
    return-void
.end method
