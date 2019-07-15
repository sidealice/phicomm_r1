.class final Lorg/greenrobot/greendao/query/CursorQuery$QueryData;
.super Lorg/greenrobot/greendao/query/AbstractQueryData;
.source "CursorQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/greendao/query/CursorQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/query/AbstractQueryData",
        "<TT2;",
        "Lorg/greenrobot/greendao/query/CursorQuery",
        "<TT2;>;>;"
    }
.end annotation


# instance fields
.field private final limitPosition:I

.field private final offsetPosition:I


# direct methods
.method constructor <init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 0
    .param p1, "dao"    # Lorg/greenrobot/greendao/AbstractDao;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "initialValues"    # [Ljava/lang/String;
    .param p4, "limitPosition"    # I
    .param p5, "offsetPosition"    # I

    .prologue
    .line 35
    .local p0, "this":Lorg/greenrobot/greendao/query/CursorQuery$QueryData;, "Lorg/greenrobot/greendao/query/CursorQuery$QueryData<TT2;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/greenrobot/greendao/query/AbstractQueryData;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    .line 36
    iput p4, p0, Lorg/greenrobot/greendao/query/CursorQuery$QueryData;->limitPosition:I

    .line 37
    iput p5, p0, Lorg/greenrobot/greendao/query/CursorQuery$QueryData;->offsetPosition:I

    .line 38
    return-void
.end method


# virtual methods
.method protected bridge synthetic createQuery()Lorg/greenrobot/greendao/query/AbstractQuery;
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lorg/greenrobot/greendao/query/CursorQuery$QueryData;, "Lorg/greenrobot/greendao/query/CursorQuery$QueryData<TT2;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/CursorQuery$QueryData;->createQuery()Lorg/greenrobot/greendao/query/CursorQuery;

    move-result-object v0

    return-object v0
.end method

.method protected createQuery()Lorg/greenrobot/greendao/query/CursorQuery;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/CursorQuery",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lorg/greenrobot/greendao/query/CursorQuery$QueryData;, "Lorg/greenrobot/greendao/query/CursorQuery$QueryData<TT2;>;"
    new-instance v0, Lorg/greenrobot/greendao/query/CursorQuery;

    iget-object v2, p0, Lorg/greenrobot/greendao/query/CursorQuery$QueryData;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v3, p0, Lorg/greenrobot/greendao/query/CursorQuery$QueryData;->sql:Ljava/lang/String;

    iget-object v1, p0, Lorg/greenrobot/greendao/query/CursorQuery$QueryData;->initialValues:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iget v5, p0, Lorg/greenrobot/greendao/query/CursorQuery$QueryData;->limitPosition:I

    iget v6, p0, Lorg/greenrobot/greendao/query/CursorQuery$QueryData;->offsetPosition:I

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/greenrobot/greendao/query/CursorQuery;-><init>(Lorg/greenrobot/greendao/query/CursorQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;IILorg/greenrobot/greendao/query/CursorQuery$1;)V

    return-object v0
.end method
