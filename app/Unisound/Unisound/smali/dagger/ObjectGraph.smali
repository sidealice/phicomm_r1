.class public abstract Ldagger/ObjectGraph;
.super Ljava/lang/Object;
.source "ObjectGraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/ObjectGraph$OverridesBindings;,
        Ldagger/ObjectGraph$StandardBindings;,
        Ldagger/ObjectGraph$DaggerObjectGraph;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static varargs create([Ljava/lang/Object;)Ldagger/ObjectGraph;
    .locals 2
    .param p0, "modules"    # [Ljava/lang/Object;

    .prologue
    .line 129
    const/4 v0, 0x0

    new-instance v1, Ldagger/internal/FailoverLoader;

    invoke-direct {v1}, Ldagger/internal/FailoverLoader;-><init>()V

    invoke-static {v0, v1, p0}, Ldagger/ObjectGraph$DaggerObjectGraph;->access$000(Ldagger/ObjectGraph$DaggerObjectGraph;Ldagger/internal/Loader;[Ljava/lang/Object;)Ldagger/ObjectGraph;

    move-result-object v0

    return-object v0
.end method

.method static varargs createWith(Ldagger/internal/Loader;[Ljava/lang/Object;)Ldagger/ObjectGraph;
    .locals 1
    .param p0, "loader"    # Ldagger/internal/Loader;
    .param p1, "modules"    # [Ljava/lang/Object;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ldagger/ObjectGraph$DaggerObjectGraph;->access$000(Ldagger/ObjectGraph$DaggerObjectGraph;Ldagger/internal/Loader;[Ljava/lang/Object;)Ldagger/ObjectGraph;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract get(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract inject(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract injectStatics()V
.end method

.method public varargs abstract plus([Ljava/lang/Object;)Ldagger/ObjectGraph;
.end method

.method public abstract validate()V
.end method
