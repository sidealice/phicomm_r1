.class final Ldagger/internal/LazyBinding;
.super Ldagger/internal/Binding;
.source "LazyBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldagger/internal/Binding",
        "<",
        "Ldagger/Lazy",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final NOT_PRESENT:Ljava/lang/Object;


# instance fields
.field private delegate:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final lazyKey:Ljava/lang/String;

.field private final loader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldagger/internal/LazyBinding;->NOT_PRESENT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "requiredBy"    # Ljava/lang/Object;
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .param p4, "lazyKey"    # Ljava/lang/String;

    .prologue
    .line 33
    .local p0, "this":Ldagger/internal/LazyBinding;, "Ldagger/internal/LazyBinding<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 34
    iput-object p3, p0, Ldagger/internal/LazyBinding;->loader:Ljava/lang/ClassLoader;

    .line 35
    iput-object p4, p0, Ldagger/internal/LazyBinding;->lazyKey:Ljava/lang/String;

    .line 36
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Ldagger/internal/LazyBinding;->NOT_PRESENT:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Ldagger/internal/LazyBinding;)Ldagger/internal/Binding;
    .locals 1
    .param p0, "x0"    # Ldagger/internal/LazyBinding;

    .prologue
    .line 24
    iget-object v0, p0, Ldagger/internal/LazyBinding;->delegate:Ldagger/internal/Binding;

    return-object v0
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 41
    .local p0, "this":Ldagger/internal/LazyBinding;, "Ldagger/internal/LazyBinding<TT;>;"
    iget-object v0, p0, Ldagger/internal/LazyBinding;->lazyKey:Ljava/lang/String;

    iget-object v1, p0, Ldagger/internal/LazyBinding;->requiredBy:Ljava/lang/Object;

    iget-object v2, p0, Ldagger/internal/LazyBinding;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Ldagger/internal/LazyBinding;->delegate:Ldagger/internal/Binding;

    .line 42
    return-void
.end method

.method public get()Ldagger/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/Lazy",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Ldagger/internal/LazyBinding;, "Ldagger/internal/LazyBinding<TT;>;"
    new-instance v0, Ldagger/internal/LazyBinding$1;

    invoke-direct {v0, p0}, Ldagger/internal/LazyBinding$1;-><init>(Ldagger/internal/LazyBinding;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    .local p0, "this":Ldagger/internal/LazyBinding;, "Ldagger/internal/LazyBinding<TT;>;"
    invoke-virtual {p0}, Ldagger/internal/LazyBinding;->get()Ldagger/Lazy;

    move-result-object v0

    return-object v0
.end method

.method public injectMembers(Ldagger/Lazy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Ldagger/internal/LazyBinding;, "Ldagger/internal/LazyBinding<TT;>;"
    .local p1, "t":Ldagger/Lazy;, "Ldagger/Lazy<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    .local p0, "this":Ldagger/internal/LazyBinding;, "Ldagger/internal/LazyBinding<TT;>;"
    check-cast p1, Ldagger/Lazy;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ldagger/internal/LazyBinding;->injectMembers(Ldagger/Lazy;)V

    return-void
.end method
