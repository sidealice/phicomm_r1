.class final Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a$1;
.super Ljava/lang/Object;
.source "UnBindPresenter.java"

# interfaces
.implements Lcom/phicomm/speaker/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "onClickListener"

    .line 123
    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 124
    invoke-static {}, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a;->b()V

    return-void
.end method
