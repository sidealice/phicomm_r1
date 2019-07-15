.class Lcom/phicomm/speaker/presenter/mqtt/a$1;
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
.field final synthetic a:Lcom/phicomm/speaker/presenter/mqtt/a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/mqtt/a;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/a$1;->a:Lcom/phicomm/speaker/presenter/mqtt/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 273
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
