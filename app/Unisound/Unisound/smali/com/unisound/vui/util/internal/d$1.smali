.class final Lcom/unisound/vui/util/internal/d$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/util/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/unisound/vui/util/internal/d;->a(J)J

    invoke-static {}, Lcom/unisound/vui/util/internal/d;->c()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
