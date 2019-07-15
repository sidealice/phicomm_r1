.class Lcom/phicomm/speaker/net/a/a$6;
.super Ljava/lang/Object;
.source "BaseCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/net/a/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/net/a/a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/net/a/a;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/phicomm/speaker/net/a/a$6;->a:Lcom/phicomm/speaker/net/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "BaseCallback"

    const-string v1, "unbind from http"

    .line 401
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcom/phicomm/speaker/presenter/mqtt/UnBindPresenter$a;->a()V

    return-void
.end method
