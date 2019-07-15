.class final Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a$1;
.super Ljava/lang/Object;
.source "MyInterceptor.java"

# interfaces
.implements Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 318
    invoke-static {}, Lcom/phicomm/speaker/f/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "netlog"

    .line 319
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
