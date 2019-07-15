.class public final Lcom/phicomm/speaker/device/data/Injector;
.super Ljava/lang/Object;
.source "Injector.java"


# static fields
.field private static final INJECTOR_SERVICE:Ljava/lang/String; = "com.unisound.ant.platform.example.data.injector"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static matchesService(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-string v0, "com.unisound.ant.platform.example.data.injector"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static obtain(Landroid/content/Context;)Ldagger/ObjectGraph;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    const-string v0, "com.unisound.ant.platform.example.data.injector"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/ObjectGraph;

    return-object v0
.end method
