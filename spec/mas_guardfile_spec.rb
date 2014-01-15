require_relative './spec_helper'

require 'mas/development_dependencies/guard'

describe 'Mas Guardfile' do
  describe 'Guard::Dsl#mas_guard' do
    describe 'By defaults' do

      it 'includes all MAS guard plugins' do
        expect_any_instance_of(Guard::Dsl).to receive(:guard).with('sass', input: 'app/assets/stylesheets', output: 'public/stylesheets')
        expect_any_instance_of(Guard::Dsl).to receive(:guard).with('livereload')

        Guard::Dsl.new.mas_guard
      end

    end

    describe 'When providing an option as sass plugin identifier' do
      describe 'And MAS provides a defaut config' do
        it 'only configures that provided plugin' do
          expect_any_instance_of(Guard::Dsl).to     receive(:guard).with('sass', input: 'app/assets/stylesheets', output: 'public/stylesheets')
          expect_any_instance_of(Guard::Dsl).not_to receive(:guard).with('livereload')

          Guard::Dsl.new.mas_guard :sass
        end
      end

      describe 'And MAS does not provide defaults for one of these plugins' do
        it 'warns for any unknown plugins and configures the known ones' do
          expect_any_instance_of(Guard::Dsl).to     receive(:guard).with('livereload')
          expect_any_instance_of(Guard::Dsl).not_to receive(:guard).with('fancy_guard_plugin')
          expect(Guard::UI).to receive(:warning).with('No default MAS configuration for plugin "fancy_guard_plugin"')

          Guard::Dsl.new.mas_guard :fancy_guard_plugin, :livereload
        end
      end
    end
  end
end
