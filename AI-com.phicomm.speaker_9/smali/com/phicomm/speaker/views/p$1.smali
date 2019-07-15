.class Lcom/phicomm/speaker/views/p$1;
.super Ljava/lang/Object;
.source "VerifyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/views/p;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/p;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/p;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/phicomm/speaker/views/p$1;->a:Lcom/phicomm/speaker/views/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/phicomm/speaker/views/p$1;->a:Lcom/phicomm/speaker/views/p;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/p;->dismiss()V

    return-void
.end method
