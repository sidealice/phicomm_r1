.class Lcom/phicomm/speaker/presenter/mqtt/a$2;
.super Ljava/lang/Object;
.source "CommonConfigPresenter.java"

# interfaces
.implements Lcom/phicomm/speaker/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/mqtt/a;->a(Ljava/lang/String;Lcom/phicomm/speaker/presenter/mqtt/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/phicomm/speaker/presenter/mqtt/a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/mqtt/a;Ljava/lang/String;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a$2;->b:Lcom/phicomm/speaker/presenter/mqtt/a;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/mqtt/a$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    .line 278
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 279
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a$2;->b:Lcom/phicomm/speaker/presenter/mqtt/a;

    iget-object p2, p0, Lcom/phicomm/speaker/presenter/mqtt/a$2;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/a$2;->b:Lcom/phicomm/speaker/presenter/mqtt/a;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(Lcom/phicomm/speaker/presenter/mqtt/a;)Lcom/phicomm/speaker/views/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/q;->a()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(Lcom/phicomm/speaker/presenter/mqtt/a;Ljava/lang/String;I)V

    return-void
.end method
