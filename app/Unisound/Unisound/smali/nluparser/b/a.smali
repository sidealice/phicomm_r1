.class public Lnluparser/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnluparser/b/a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lnluparser/b/a;
    .locals 1

    new-instance v0, Lnluparser/b/a;

    invoke-direct {v0}, Lnluparser/b/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lnluparser/a;)Lnluparser/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/a;",
            ")",
            "Lnluparser/b",
            "<",
            "Ljava/lang/String;",
            "Lnluparser/scheme/NLU;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnluparser/b/a$a;

    invoke-direct {v0, p1}, Lnluparser/b/a$a;-><init>(Lnluparser/a;)V

    return-object v0
.end method
