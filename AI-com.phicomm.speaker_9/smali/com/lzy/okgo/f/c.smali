.class public Lcom/lzy/okgo/f/c;
.super Ljava/lang/Object;
.source "OkLogger.java"


# static fields
.field public static a:Ljava/lang/String; = "OkGo"

.field private static b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 0

    .line 24
    sput-object p0, Lcom/lzy/okgo/f/c;->a:Ljava/lang/String;

    .line 25
    sput-boolean p1, Lcom/lzy/okgo/f/c;->b:Z

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    .line 69
    sget-boolean v0, Lcom/lzy/okgo/f/c;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 1

    .line 20
    sget-object v0, Lcom/lzy/okgo/f/c;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lzy/okgo/f/c;->a(Ljava/lang/String;Z)V

    return-void
.end method
