.class public Ljavax/validation/ConstraintViolationException;
.super Ljavax/validation/ValidationException;
.source "ConstraintViolationException.java"


# instance fields
.field private final constraintViolations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object<",
            "*>;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Ljavax/validation/ValidationException;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Ljavax/validation/ConstraintViolationException;->constraintViolations:Ljava/util/Set;

    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Ljavax/validation/ConstraintViolationException;->constraintViolations:Ljava/util/Set;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object<",
            "*>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0, p1}, Ljavax/validation/ConstraintViolationException;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public getConstraintViolations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object<",
            "*>;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Ljavax/validation/ConstraintViolationException;->constraintViolations:Ljava/util/Set;

    return-object v0
.end method
