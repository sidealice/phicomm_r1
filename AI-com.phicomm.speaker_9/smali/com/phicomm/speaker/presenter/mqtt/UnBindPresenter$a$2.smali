.class final Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a$2;
.super Ljava/lang/Object;
.source "UnBindPresenter.java"

# interfaces
.implements Lcom/phicomm/speaker/e/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    const-string p1, "onSuccess"

    .line 135
    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 136
    invoke-static {}, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a;->d()V

    .line 137
    sget-object p1, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a;->a:Lcom/phicomm/speaker/views/e;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/e;->dismiss()V

    .line 138
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object p1

    const-class p2, Lcom/phicomm/speaker/activity/MainActivity;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/f/c;->a(Ljava/lang/Class;)V

    .line 140
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/phicomm/speaker/a/s;

    invoke-direct {p2}, Lcom/phicomm/speaker/a/s;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 0

    const-string p1, "onFail"

    .line 145
    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 146
    invoke-static {}, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a;->d()V

    .line 147
    sget-object p1, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a;->a:Lcom/phicomm/speaker/views/e;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/e;->dismiss()V

    .line 148
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object p1

    const-class p2, Lcom/phicomm/speaker/activity/MainActivity;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/f/c;->a(Ljava/lang/Class;)V

    .line 150
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/phicomm/speaker/a/s;

    invoke-direct {p2}, Lcom/phicomm/speaker/a/s;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    return-void
.end method
