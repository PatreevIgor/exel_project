# frozen_string_literal: true
Task.delete_all

Task.create(code: 1,
            task: 'Задача 1',
            responsible: 'Иванов Иван Иванович',
            begin_date: Date.parse("09/01/2009"),
            end_date: Date.parse("09/02/2009"),
            count_days: 1,
            status:'Статус 1',
            begin_date_fact: Date.parse("09/01/2009"),
            end_date_fact: Date.parse("09/02/2009"),
            budget: 500.0,
            debit: 150.0,
            credit: 250.0 ,
            fund_balance: 300.0,
            deviation: 350.0,
            income: 400.0,
            total: 500.0,
            comments:'Комментарий 1')

Task.create(code: 2,
            task: 'Задача 2',
            responsible: 'Иванов Иван Иванович',
            begin_date: Date.parse("09/01/2009"),
            end_date: Date.parse("09/02/2009"),
            count_days: 1,
            status:'Статус 2',
            begin_date_fact: Date.parse("09/01/2009"),
            end_date_fact: Date.parse("09/02/2009"),
            budget: 300.0,
            debit: 160.0,
            credit: 460.0 ,
            fund_balance: 300.0,
            deviation: 350.0,
            income: 400.0,
            total: 500.0,
            comments:'Комментарий 2')

Task.create(code: 3,
            task: 'Задача 3',
            responsible: 'Иванов Иван Иванович',
            begin_date: Date.parse("09/01/2009"),
            end_date: Date.parse("09/02/2009"),
            count_days: 1,
            status:'Статус 3',
            begin_date_fact: Date.parse("09/01/2009"),
            budget: 20.0,
            debit: 170.0,
            credit: 270.0 ,
            fund_balance: 300.0,
            deviation: 350.0,
            income: 400.0,
            total: 500.0,
            comments:'Комментарий 3')

Task.create(code: 4,
            task: 'Задача 4',
            responsible: 'Иванов Иван Иванович',
            begin_date: Date.parse("09/01/2009"),
            end_date: Date.parse("09/02/2009"),
            count_days: 1,
            status:'Статус 4',
            budget: 130.0,
            debit: 180.0,
            credit: 280.0 ,
            fund_balance: 300.0,
            deviation: 350.0,
            income: 400.0,
            total: 500.0,
            comments:'Комментарий 4')

Task.create(code: 5,
            task: 'Задача 5',
            responsible: 'Иванов Иван Иванович',
            begin_date: Date.parse("09/01/2009"),
            end_date: Date.parse("09/02/2009"),
            count_days: 1,
            status:'Статус 4',
            budget: 140.0,
            debit: 190.0,
            credit: 290.0 ,
            fund_balance: 300.0,
            deviation: 350.0,
            income: 400.0,
            total: 500.0,
            comments:'Комментарий 4')

User.delete_all
User.create(:email                 => 'sob-igor@mail.ru', 
            :password              => 'sob-igor2018', 
            :password_confirmation => 'sob-igor2018')
