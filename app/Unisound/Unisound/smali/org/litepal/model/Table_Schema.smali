.class public Lorg/litepal/model/Table_Schema;
.super Ljava/lang/Object;
.source "Table_Schema.java"


# instance fields
.field private name:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/litepal/model/Table_Schema;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/litepal/model/Table_Schema;->type:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/litepal/model/Table_Schema;->name:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 77
    iput p1, p0, Lorg/litepal/model/Table_Schema;->type:I

    .line 78
    return-void
.end method
