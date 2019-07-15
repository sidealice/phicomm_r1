.class final Ldagger/internal/Binding$1;
.super Ldagger/internal/Binding;
.source "Binding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/Binding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unresolved binding should never be called to inject."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 31
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unresolved binding should never be called to inject."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
