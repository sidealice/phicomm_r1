.class public Lcom/unisound/b/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "v3.0.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "v3.0.0"

    return-object v0
.end method

.method public static a([Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "v3.0.0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method
