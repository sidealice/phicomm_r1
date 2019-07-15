.class public Lorg/litepal/tablemanager/model/GenericModel;
.super Ljava/lang/Object;
.source "GenericModel.java"


# instance fields
.field private getMethodName:Ljava/lang/String;

.field private tableName:Ljava/lang/String;

.field private valueColumnName:Ljava/lang/String;

.field private valueColumnType:Ljava/lang/String;

.field private valueIdColumnName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGetMethodName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/litepal/tablemanager/model/GenericModel;->getMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/litepal/tablemanager/model/GenericModel;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getValueColumnName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/litepal/tablemanager/model/GenericModel;->valueColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getValueColumnType()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/litepal/tablemanager/model/GenericModel;->valueColumnType:Ljava/lang/String;

    return-object v0
.end method

.method public getValueIdColumnName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/litepal/tablemanager/model/GenericModel;->valueIdColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public setGetMethodName(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/litepal/tablemanager/model/GenericModel;->getMethodName:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/litepal/tablemanager/model/GenericModel;->tableName:Ljava/lang/String;

    return-void
.end method

.method public setValueColumnName(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/litepal/tablemanager/model/GenericModel;->valueColumnName:Ljava/lang/String;

    return-void
.end method

.method public setValueColumnType(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/litepal/tablemanager/model/GenericModel;->valueColumnType:Ljava/lang/String;

    return-void
.end method

.method public setValueIdColumnName(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lorg/litepal/tablemanager/model/GenericModel;->valueIdColumnName:Ljava/lang/String;

    return-void
.end method
