.class public Lcom/phicomm/speaker/bean/mqtt/shadow/ShadowBean;
.super Ljava/lang/Object;
.source "ShadowBean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/phicomm/speaker/bean/mqtt/shadow/ShadowBean;->state:Ljava/lang/Object;

    return-object v0
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/phicomm/speaker/bean/mqtt/shadow/ShadowBean;->state:Ljava/lang/Object;

    return-void
.end method
