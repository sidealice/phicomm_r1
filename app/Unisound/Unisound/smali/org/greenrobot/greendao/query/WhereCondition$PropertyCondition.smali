.class public Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;
.super Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;
.source "WhereCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/greendao/query/WhereCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyCondition"
.end annotation


# instance fields
.field public final op:Ljava/lang/String;

.field public final property:Lorg/greenrobot/greendao/Property;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;)V
    .locals 0
    .param p1, "property"    # Lorg/greenrobot/greendao/Property;
    .param p2, "op"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-direct {p0}, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;-><init>()V

    .line 121
    iput-object p1, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->property:Lorg/greenrobot/greendao/Property;

    .line 122
    iput-object p2, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->op:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "property"    # Lorg/greenrobot/greendao/Property;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 126
    invoke-static {p1, p3}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->checkValueForType(Lorg/greenrobot/greendao/Property;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;-><init>(Ljava/lang/Object;)V

    .line 127
    iput-object p1, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->property:Lorg/greenrobot/greendao/Property;

    .line 128
    iput-object p2, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->op:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "property"    # Lorg/greenrobot/greendao/Property;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/Object;

    .prologue
    .line 132
    invoke-static {p1, p3}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->checkValuesForType(Lorg/greenrobot/greendao/Property;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;-><init>([Ljava/lang/Object;)V

    .line 133
    iput-object p1, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->property:Lorg/greenrobot/greendao/Property;

    .line 134
    iput-object p2, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->op:Ljava/lang/String;

    .line 135
    return-void
.end method

.method private static checkValueForType(Lorg/greenrobot/greendao/Property;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "property"    # Lorg/greenrobot/greendao/Property;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 74
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 75
    new-instance v3, Lorg/greenrobot/greendao/DaoException;

    const-string v4, "Illegal value: found array, but simple object required"

    invoke-direct {v3, v4}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 77
    :cond_0
    iget-object v2, p0, Lorg/greenrobot/greendao/Property;->type:Ljava/lang/Class;

    .line 78
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/util/Date;

    if-ne v2, v5, :cond_3

    .line 79
    instance-of v3, p1, Ljava/util/Date;

    if-eqz v3, :cond_2

    .line 80
    check-cast p1, Ljava/util/Date;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 107
    :cond_1
    :goto_0
    return-object p1

    .line 81
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v3, p1, Ljava/lang/Long;

    if-nez v3, :cond_1

    .line 84
    new-instance v3, Lorg/greenrobot/greendao/DaoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal date value: expected java.util.Date or Long for value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :cond_3
    iget-object v5, p0, Lorg/greenrobot/greendao/Property;->type:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lorg/greenrobot/greendao/Property;->type:Ljava/lang/Class;

    const-class v6, Ljava/lang/Boolean;

    if-ne v5, v6, :cond_1

    .line 87
    :cond_4
    instance-of v5, p1, Ljava/lang/Boolean;

    if-eqz v5, :cond_6

    .line 88
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    move v3, v4

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 89
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v5, p1, Ljava/lang/Number;

    if-eqz v5, :cond_7

    move-object v3, p1

    .line 90
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 91
    .local v0, "intValue":I
    if-eqz v0, :cond_1

    if-eq v0, v4, :cond_1

    .line 92
    new-instance v3, Lorg/greenrobot/greendao/DaoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal boolean value: numbers must be 0 or 1, but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    .end local v0    # "intValue":I
    :cond_7
    instance-of v5, p1, Ljava/lang/String;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 95
    check-cast v1, Ljava/lang/String;

    .line 96
    .local v1, "stringValue":Ljava/lang/String;
    const-string v5, "TRUE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 98
    :cond_8
    const-string v4, "FALSE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_0

    .line 101
    :cond_9
    new-instance v3, Lorg/greenrobot/greendao/DaoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal boolean value: Strings must be \"TRUE\" or \"FALSE\" (case insensitive), but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static checkValuesForType(Lorg/greenrobot/greendao/Property;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p0, "property"    # Lorg/greenrobot/greendao/Property;
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 112
    aget-object v1, p1, v0

    invoke-static {p0, v1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->checkValueForType(Lorg/greenrobot/greendao/Property;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-object p1
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "tableAlias"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->property:Lorg/greenrobot/greendao/Property;

    invoke-static {p1, p2, v0}, Lorg/greenrobot/greendao/internal/SqlUtils;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/greenrobot/greendao/Property;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->op:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    return-void
.end method
