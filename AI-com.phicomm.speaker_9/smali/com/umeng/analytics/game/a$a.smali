.class Lcom/umeng/analytics/game/a$a;
.super Ljava/lang/Object;
.source "GameState.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/game/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:J = 0x1335127L


# instance fields
.field private b:Ljava/lang/String;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/umeng/analytics/game/a$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/game/a$a;->d:J

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/umeng/analytics/game/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 8

    .line 121
    iget-wide v0, p0, Lcom/umeng/analytics/game/a$a;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/umeng/analytics/game/a$a;->d:J

    sub-long v6, v2, v4

    add-long v2, v0, v6

    iput-wide v2, p0, Lcom/umeng/analytics/game/a$a;->c:J

    const-wide/16 v0, 0x0

    .line 122
    iput-wide v0, p0, Lcom/umeng/analytics/game/a$a;->d:J

    return-void
.end method

.method public c()V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/umeng/analytics/game/a$a;->a()V

    return-void
.end method

.method public d()V
    .locals 0

    .line 130
    invoke-virtual {p0}, Lcom/umeng/analytics/game/a$a;->b()V

    return-void
.end method

.method public e()J
    .locals 2

    .line 134
    iget-wide v0, p0, Lcom/umeng/analytics/game/a$a;->c:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/umeng/analytics/game/a$a;->b:Ljava/lang/String;

    return-object v0
.end method
