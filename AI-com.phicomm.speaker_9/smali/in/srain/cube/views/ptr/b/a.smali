.class public Lin/srain/cube/views/ptr/b/a;
.super Ljava/lang/Object;
.source "PtrCLog.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 81
    sget v0, Lin/srain/cube/views/ptr/b/a;->a:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 65
    sget v0, Lin/srain/cube/views/ptr/b/a;->a:I

    if-lez v0, :cond_0

    return-void

    .line 68
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 69
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 71
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 125
    sget v0, Lin/srain/cube/views/ptr/b/a;->a:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 95
    sget v0, Lin/srain/cube/views/ptr/b/a;->a:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    .line 98
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 99
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 101
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 212
    sget v0, Lin/srain/cube/views/ptr/b/a;->a:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static varargs c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 139
    sget v0, Lin/srain/cube/views/ptr/b/a;->a:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    return-void

    .line 142
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 143
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 145
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
