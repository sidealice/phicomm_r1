.class public Lcom/umeng/commonsdk/framework/UMWorkDispatch;
.super Ljava/lang/Object;
.source "UMWorkDispatch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Quit()V
    .locals 0

    .line 20
    invoke-static {}, Lcom/umeng/commonsdk/framework/d;->a()V

    return-void
.end method

.method public static eventHasExist(I)Z
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/d;->a(I)Z

    move-result p0

    return p0
.end method

.method public static sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    .locals 0

    .line 12
    invoke-static {p0, p1, p2, p3}, Lcom/umeng/commonsdk/framework/d;->a(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    return-void
.end method
